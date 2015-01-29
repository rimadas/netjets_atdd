include PageObject::PageFactory

module SurveyInteractions

  def open_the_survey
    visit_page Survey
  end

  def submit_valid_survey_info
    on_page Survey do |page|
      page.uid = 'rdas'
      page.pwd = 'xyz123'
      page.login
    end
    sleep 2
  end

  def gather_survey_results
    page = on_page SurveyResult
    results = Hash.new
    results[:message] = page.response
    results
  end

end

World SurveyInteractions