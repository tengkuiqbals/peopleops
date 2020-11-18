require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { branch_name: @employee.branch_name, emp_accbank: @employee.emp_accbank, emp_accholder: @employee.emp_accholder, emp_bank: @employee.emp_bank, emp_birthdate: @employee.emp_birthdate, emp_bpjskes: @employee.emp_bpjskes, emp_bpjstku: @employee.emp_bpjstku, emp_compid: @employee.emp_compid, emp_email: @employee.emp_email, emp_famcard: @employee.emp_famcard, emp_gender: @employee.emp_gender, emp_hire: @employee.emp_hire, emp_id: @employee.emp_id, emp_ktp: @employee.emp_ktp, emp_linemgr: @employee.emp_linemgr, emp_marital: @employee.emp_marital, emp_maritaldate: @employee.emp_maritaldate, emp_mgremail: @employee.emp_mgremail, emp_mobile: @employee.emp_mobile, emp_name: @employee.emp_name, emp_nationality: @employee.emp_nationality, emp_npwp: @employee.emp_npwp, emp_orgid1: @employee.emp_orgid1, emp_orgid4: @employee.emp_orgid4, emp_orihire: @employee.emp_orihire, emp_pp: @employee.emp_pp, emp_religion: @employee.emp_religion, emp_resign: @employee.emp_resign, emp_status: @employee.emp_status, job_name: @employee.job_name, lev_name: @employee.lev_name, salary: @employee.salary } }
    end

    assert_redirected_to employee_url(Employee.last)
  end

  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { branch_name: @employee.branch_name, emp_accbank: @employee.emp_accbank, emp_accholder: @employee.emp_accholder, emp_bank: @employee.emp_bank, emp_birthdate: @employee.emp_birthdate, emp_bpjskes: @employee.emp_bpjskes, emp_bpjstku: @employee.emp_bpjstku, emp_compid: @employee.emp_compid, emp_email: @employee.emp_email, emp_famcard: @employee.emp_famcard, emp_gender: @employee.emp_gender, emp_hire: @employee.emp_hire, emp_id: @employee.emp_id, emp_ktp: @employee.emp_ktp, emp_linemgr: @employee.emp_linemgr, emp_marital: @employee.emp_marital, emp_maritaldate: @employee.emp_maritaldate, emp_mgremail: @employee.emp_mgremail, emp_mobile: @employee.emp_mobile, emp_name: @employee.emp_name, emp_nationality: @employee.emp_nationality, emp_npwp: @employee.emp_npwp, emp_orgid1: @employee.emp_orgid1, emp_orgid4: @employee.emp_orgid4, emp_orihire: @employee.emp_orihire, emp_pp: @employee.emp_pp, emp_religion: @employee.emp_religion, emp_resign: @employee.emp_resign, emp_status: @employee.emp_status, job_name: @employee.job_name, lev_name: @employee.lev_name, salary: @employee.salary } }
    assert_redirected_to employee_url(@employee)
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end
