require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "creating a Employee" do
    visit employees_url
    click_on "New Employee"

    fill_in "Branch name", with: @employee.branch_name
    fill_in "Emp accbank", with: @employee.emp_accbank
    fill_in "Emp accholder", with: @employee.emp_accholder
    fill_in "Emp bank", with: @employee.emp_bank
    fill_in "Emp birthdate", with: @employee.emp_birthdate
    fill_in "Emp bpjskes", with: @employee.emp_bpjskes
    fill_in "Emp bpjstku", with: @employee.emp_bpjstku
    fill_in "Emp compid", with: @employee.emp_compid
    fill_in "Emp email", with: @employee.emp_email
    fill_in "Emp famcard", with: @employee.emp_famcard
    fill_in "Emp gender", with: @employee.emp_gender
    fill_in "Emp hire", with: @employee.emp_hire
    fill_in "Emp", with: @employee.emp_id
    fill_in "Emp ktp", with: @employee.emp_ktp
    fill_in "Emp linemgr", with: @employee.emp_linemgr
    fill_in "Emp marital", with: @employee.emp_marital
    fill_in "Emp maritaldate", with: @employee.emp_maritaldate
    fill_in "Emp mgremail", with: @employee.emp_mgremail
    fill_in "Emp mobile", with: @employee.emp_mobile
    fill_in "Emp name", with: @employee.emp_name
    fill_in "Emp nationality", with: @employee.emp_nationality
    fill_in "Emp npwp", with: @employee.emp_npwp
    fill_in "Emp orgid1", with: @employee.emp_orgid1
    fill_in "Emp orgid4", with: @employee.emp_orgid4
    fill_in "Emp orihire", with: @employee.emp_orihire
    fill_in "Emp pp", with: @employee.emp_pp
    fill_in "Emp religion", with: @employee.emp_religion
    fill_in "Emp resign", with: @employee.emp_resign
    fill_in "Emp status", with: @employee.emp_status
    fill_in "Job name", with: @employee.job_name
    fill_in "Lev name", with: @employee.lev_name
    fill_in "Salary", with: @employee.salary
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "updating a Employee" do
    visit employees_url
    click_on "Edit", match: :first

    fill_in "Branch name", with: @employee.branch_name
    fill_in "Emp accbank", with: @employee.emp_accbank
    fill_in "Emp accholder", with: @employee.emp_accholder
    fill_in "Emp bank", with: @employee.emp_bank
    fill_in "Emp birthdate", with: @employee.emp_birthdate
    fill_in "Emp bpjskes", with: @employee.emp_bpjskes
    fill_in "Emp bpjstku", with: @employee.emp_bpjstku
    fill_in "Emp compid", with: @employee.emp_compid
    fill_in "Emp email", with: @employee.emp_email
    fill_in "Emp famcard", with: @employee.emp_famcard
    fill_in "Emp gender", with: @employee.emp_gender
    fill_in "Emp hire", with: @employee.emp_hire
    fill_in "Emp", with: @employee.emp_id
    fill_in "Emp ktp", with: @employee.emp_ktp
    fill_in "Emp linemgr", with: @employee.emp_linemgr
    fill_in "Emp marital", with: @employee.emp_marital
    fill_in "Emp maritaldate", with: @employee.emp_maritaldate
    fill_in "Emp mgremail", with: @employee.emp_mgremail
    fill_in "Emp mobile", with: @employee.emp_mobile
    fill_in "Emp name", with: @employee.emp_name
    fill_in "Emp nationality", with: @employee.emp_nationality
    fill_in "Emp npwp", with: @employee.emp_npwp
    fill_in "Emp orgid1", with: @employee.emp_orgid1
    fill_in "Emp orgid4", with: @employee.emp_orgid4
    fill_in "Emp orihire", with: @employee.emp_orihire
    fill_in "Emp pp", with: @employee.emp_pp
    fill_in "Emp religion", with: @employee.emp_religion
    fill_in "Emp resign", with: @employee.emp_resign
    fill_in "Emp status", with: @employee.emp_status
    fill_in "Job name", with: @employee.job_name
    fill_in "Lev name", with: @employee.lev_name
    fill_in "Salary", with: @employee.salary
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee" do
    visit employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee was successfully destroyed"
  end
end
