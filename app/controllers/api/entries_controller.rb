class Api::EntriesController < ApplicationController
  def index
    render json: Entry.all
  end

  def create
    entry_params = params.require(:entry).permit(:amt, :entry_type, :description)
    balance = current_user.entries.reduce(0) do |total, entry|
      if entry.entry_type =~ /Debit/
        total - entry.amt
      else
        total + entry.amt
      end
    end

    entry = Entry.create(entry_params)

    if balance >= 0 && entry.entry_type =~ /Debit/
      new_balance = balance - entry.amt
      if new_balance < 0
        AccountMailer.delay.overdrawn(current_user.email, new_balance)
      end
    end

    render json: entry
  end

  def destroy
    Entry.find(params[:id]).destroy
  end
end
