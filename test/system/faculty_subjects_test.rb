require "application_system_test_case"

class FacultySubjectsTest < ApplicationSystemTestCase
  setup do
    @faculty_subject = faculty_subjects(:one)
  end

  test "visiting the index" do
    visit faculty_subjects_url
    assert_selector "h1", text: "Faculty Subjects"
  end

  test "creating a Faculty subject" do
    visit faculty_subjects_url
    click_on "New Faculty Subject"

    fill_in "Faculty", with: @faculty_subject.faculty_id
    fill_in "Subject", with: @faculty_subject.subject_id
    click_on "Create Faculty subject"

    assert_text "Faculty subject was successfully created"
    click_on "Back"
  end

  test "updating a Faculty subject" do
    visit faculty_subjects_url
    click_on "Edit", match: :first

    fill_in "Faculty", with: @faculty_subject.faculty_id
    fill_in "Subject", with: @faculty_subject.subject_id
    click_on "Update Faculty subject"

    assert_text "Faculty subject was successfully updated"
    click_on "Back"
  end

  test "destroying a Faculty subject" do
    visit faculty_subjects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Faculty subject was successfully destroyed"
  end
end
