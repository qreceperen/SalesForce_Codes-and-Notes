public class Clarusway { // Wrapper Class
    // class variables = properties ------------------------
    private integer sf=0;
    private integer aws=0;
    private static Integer all=0;
    private List<String> sfStudent = new List<String>();
    private List<String> awsStudent = new List<String>();
    private String nickName;
    
    // constructo method-------------------------------
    
    public Clarusway(){
        nickName='';
        System.debug('Clarusway Class is duplicated');
    }
    public Clarusway(String nick){
        nickName = nick;
        System.debug(nickName + ' named cohort is created Clarusway Class is duplicated. ');
            
        }
     public String getNickName(){
        return nickName;
        
    }
    // class methods -----------------------------------------------Behaviours
    
    public void addSF(String fullName){
        System.debug(nickName + ' named cohort have a new student . ' + fullName);
        sfStudent.add(fullName);
        setSF(1);
    }
    
    public Boolean  checkSF(String fullName){ // Check if Student name is added to sfStudent list or Not.
        return sfStudent.contains(fullName); // sfStudent.contains(fullName) returns True of False Thats why we return to Boolean.
        
    }
    
    public Boolean addSF(List<String> StudentList){
        
        System.debug(nickName + ' named cohort have new students. ' + StudentList);
        Integer oldListSize = sfStudent.size(); // for test purpose
        Integer studentListSize = StudentList.size();
        
        sfStudent.addAll(StudentList);
        sf+=studentList.size();
        all+=StudentList.size();
        
        Integer newListSize = sfStudent.size(); // for test purpose
        if(studentListSize == newListSize - oldListSize){
            return True;   
        }else{
            return false;
        }
        
    }
    
     public Boolean addAWS(String fullName){
        System.debug(nickName + ' named cohort have a new student . ' + fullName);
        awsStudent.add(fullName);
        setAWS(1);
        Boolean result = awsStudent.contains(fullName);
        return result;
         
    }
    
    
    public Boolean addAWS(List<String> StudentList){
        
        System.debug(nickName + ' named cohort have new students. ' + StudentList);
        
        Integer oldAWSListSize = awsStudent.size();
        
        awsStudent.addAll(StudentList);
        Integer newAWSListSize = awsStudent.size();
        
        aws+=studentList.size();
        all+=StudentList.size();
        
        Integer stdSize = StudentList.size();
        if(stdSize == newAWSListSize - oldAWSListSize){
            return True;
        }else{
            return False;
        }

        
    }
    
    public static Integer all(){
        return all;
    }
    
    private void setSF(Integer numberOfStudents){
        sf = sf + numberOfStudents;
        all = all + numberOfStudents;
    }
    
    public Integer getSF(){
        return sf;
    }
     private void setAWS(Integer numberOfStudents){
        aws = aws + numberOfStudents;
        all = all + numberOfStudents;
    }
    
    public Integer getAWS(){
        return aws;
    }
    
    private class Workshop{// inner class
        private void create(){ // inner Class Method
            System.debug('Workshop is Created..');
            //salesforce db. workshop record.  
        }
        
    }// inner class finish
    
    public void createWorkshop(){
        Workshop week1 = New Workshop();
        week1.create();
    }

}