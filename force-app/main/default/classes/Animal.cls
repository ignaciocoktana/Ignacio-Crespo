public inherited sharing class Animal {

    global String animalType;

    public Animal(String animalType) {
        this.animalType = animalType;
    }

    // We should use switch statement
    public void makeNoise(){
        switch on animalType{
            when 'Lion'{
                roar();
            }
            when 'Cat'{
                meow();
            }
            when 'Horse'{
                neigh();
            }
            when 'Alligator'{
                hiss();
            }
            when 'Bear'{
                growl();
            }
            when 'Cow'{
                moo();
            }
            when 'Dog'{
                bark();
            }
        }
    }

    public void move(){
        switch on animalType{
            when 'Lion','Dog'{
                run();
            }
            when 'Cat','Bear','Cow'{
                walk();
            }
            when 'Horse'{
                slide();
            }
            when 'Alligator'{
                hiss();
            }
        }
    }

    List<String> animalsThatSwim = new List<String>{'Lion','Alligator','Bear','Dog'}();
    public void swim(){
        if(animalsThatSwim.contains(animalType)){
            doSwim();
        }
    }

    public void roar() {
        // roaring behavior here
    }

    public void meow() {
        // meowing behavior here
    }

    public void neigh() {
        // neighing behavior here
    }

    public void hiss() {
        // hissing behavior here
    }

    public void growl() {
        // growling behavior here
    }

    public void moo() {
        // mooing behavior here
    }

    public void bark() {
        // barking behavior here
    }

    public void run() {
        // running behavior here
    }

    public void walk() {
        // walking behavior here
    }

    public void slide() {
        // sliding behavior here
    }

    public void doSwim() {
        // swimming behavior here
    }
}