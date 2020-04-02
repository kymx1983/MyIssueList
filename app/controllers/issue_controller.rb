class IssueController < ApplicationController
  def index
    @issues = Issue.all
  end

  def show
    @issue = Issue.find_by(id:params[:id])
  end

  def edit
    @issue = Issue.find_by(id:params[:id])
  end

  def update
    issue = Issue.find_by(id:params[:id])

    issue.title = params[:title]
    issue.content = params[:content]

    issue.save
    redirect_to("/issue/index")
  end

  def destroy
    @issue = Issue.find_by(id:params[:id])
    @issue.destroy

    redirect_to("/issue/index")
  end

  def new

  end

  def create
    issue = Issue.new
    issue.title = params[:title]
    issue.content = params[:content]
    issue.save

    redirect_to("/issue/index")
  end
end
