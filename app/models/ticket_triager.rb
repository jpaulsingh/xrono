class TicketTriager < ActiveRecord::Base                                                                                                 
  belongs_to :ticket
  belongs_to :work_unit
 
  has_many :tickets
  has_many :work_units
 
  validates_presence_of :ticket_id
 

  def client
    project.client
  end

  def project
    ticket.project
  end
 
  def ticket_long_name
   "Ticket: [#{id}] - #{project.name} - #{name} ticket for #{client.name}"
  end
   
  def workunit_one_year_old?
    work_units.last.created_at > 1.year.ago
   
  end
 
 
 end
