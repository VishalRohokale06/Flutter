//NAMED PARAMETER

void main(){
empInfo(empId : 1, company :"Infosys" , empName:"Kanha",role:"DevOps",salary:2.3);
}

void empInfo({int? empId,String? empName,String? company,required double salary,String? role}){

print("Employe Id : $empId");
print("Employe Name : $empName");
print("Employe Company : $company");
print("Role : $role");
print("Employe Salary : $salary");
}
