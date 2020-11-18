class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :emp_id
      t.string :emp_name
      t.date :emp_birthdate
      t.string :emp_religion
      t.date :emp_orihire
      t.date :emp_hire
      t.date :emp_resign
      t.date :emp_maritaldate
      t.string :emp_compid
      t.string :emp_email
      t.string :emp_gender
      t.string :emp_marital
      t.string :emp_bank
      t.string :emp_accbank
      t.string :emp_accholder
      t.string :emp_npwp
      t.string :emp_ktp
      t.string :emp_bpjstku
      t.string :emp_bpjskes
      t.string :job_name
      t.string :lev_name
      t.string :branch_name
      t.string :emp_mobile
      t.string :emp_orgid1
      t.string :emp_orgid4
      t.string :emp_pp
      t.string :emp_linemgr
      t.string :emp_mgremail
      t.string :emp_status
      t.string :emp_famcard
      t.string :emp_nationality
      t.integer :salary

      t.timestamps
    end
  end
end
