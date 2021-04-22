(define
	(problem Hanik_Area_Intime)
	(:domain food_delivery)
	(:objects
                ;Drivers
                cycle1 - bike
                ;cycle2 - bike
                ;cycle3 - bike
                ;cycle4-bike
                ;cycle5-bike
                ;moped1 - engine
                ;moped2 - engine
                ;moped3-engine
                
                ;Orders ;Orders were removed to allow faster running times
                order1 - order
                ; order2 - order
                ; order3 - order
                ; order4 - order
                ; order5 - order
                ; order6 - order
                ; order7 - order
                ; order8 - order
                ; order9 - order
                ; order10 - order
                ; order11 - order
                ; order12 - order
                
                ;Restaurants
                north1 - restaurant
                north2 - restaurant
                north3 - restaurant
                south1 - restaurant
                south2 - restaurant
                south3 - restaurant
               

                ;Customers
                Urbanest - customer
                SSA - customer
                south2 - customer
                south1 - customer

                ;Petrol Station
                petrol - petrol-station

                ;Places
                j5 - place
                j7 - place
                j10 - place
                j11 - place
                j9 - place
                j8 - place
                j12 - place
                j13 - place
                j15 - place
                j16 - place
                j21 - place
                
	)
	(:init
                ;Routes
                ;Km - Distance
                (path north2 j5) (path j5 north2) (= (distance north2 j5) 0.1) (= (distance j5 north2) 0.1) (= (traffic north2 j5) 1) (= (traffic j5 north2) 1)
                (path SSA j5) (path j5 SSA) (= (distance SSA j5) 0.1) (= (distance j5 SSA) 0.1) (= (traffic SSA j5) 1) (= (traffic j5 SSA) 1)
                (path SSA j7) (path j7 SSA) (= (distance SSA j7) 0.1) (= (distance j7 SSA) 0.1) (= (traffic SSA j7) 1) (= (traffic j7 SSA) 1)
                (path SSA j10) (path j10 SSA) (= (distance SSA j10) 0.1) (= (distance j10 SSA) 0.1) (= (traffic SSA j10) 1) (= (traffic j10 SSA) 1)
                (path j11 j10) (path j10 j11) (= (distance j11 j10) 0.1) (= (distance j10 j11) 0.1) (= (traffic j11 j10) 1) (= (traffic j10 j11) 1)
                (path j11 j9) (path j9 j11) (= (distance j11 j9) 0.1) (= (distance j9 j11) 0.1) (= (traffic j11 j9) 1) (= (traffic j9 j11) 1)
                (path j7 j9) (= (distance j7 j9) 0.1) (= (traffic j7 j9) 1) ;one way junction - roundabout1 
                (path j9 j8) (= (distance j9 j8) 0.1) (= (traffic j9 j8) 1) ;one way junction - roundabout1 
                (path j8 j7) (= (distance j8 j7) 0.1) (= (traffic j8 j7) 1) ;one way junction - roundabout1
                (path j8 j12) (path j12 j8) (= (distance j8 j12) 0.1) (= (distance j12 j8) 0.1) (= (traffic j8 j12) 1) (= (traffic j12 j8) 1)
                (path j12 j13) (= (distance j12 j13) 0.1) (= (traffic j12 j13) 1) ;one way junction - roundabout2
                (path j13 Urbanest) (= (distance j13 Urbanest) 0.1) (= (traffic j13 Urbanest) 1) ;one way junction - roundabout2 
                (path Urbanest j12) (= (distance Urbanest j12) 0.1) (= (traffic Urbanest j12) 1) ;one way junction - roundabout2
                (path j11 j15) (path j15 j11) (= (distance j11 j15) 0.1) (= (distance j15 j11) 0.1) (= (traffic j11 j15) 1) (= (traffic j15 j11) 1)
                (path j13 j16) (path j16 j13) (= (distance j13 j16) 0.1) (= (distance j16 j13) 0.1) (= (traffic j13 j16) 1) (= (traffic j16 j13) 1)
                (path j15 j16) (path j16 j15) (= (distance j15 j16) 0.1) (= (distance j16 j15) 0.1) (= (traffic j15 j16) 1) (= (traffic j16 j15) 1)
                (path j15 petrol) (path petrol j15) (= (distance j15 petrol) 0.1) (= (distance petrol j15) 0.1) (= (traffic j15 petrol) 1) (= (traffic petrol j15) 1)
                (path j16 south2) (path south2 j16) (= (distance j16 south2) 0.1) (= (distance south2 j16) 0.1) (= (traffic j16 south2) 1) (= (traffic south2 j16) 1)
                (path j21 lowmarsh2) (path lowmarsh2 j21) (= (distance j21 lowmarsh2) 0.1) (= (distance lowmarsh2 j21) 0.1) (= (traffic j21 lowmarsh2) 1) (= (traffic south2 j21) 1)
                (path j21 south2) (path south2 j21) (= (distance j21 south2) 0.1) (= (distance south2 j21) 0.1) (= (traffic j21 south2) 1) (= (traffic south2 j21) 1)
                (path j21 south1) (path south1 j21) (= (distance j21 south1) 0.1) (= (distance south1 j21) 0.1) (= (traffic j21 south1) 1) (= (traffic south1 j21) 1)
                (path petrol south1) (path south1 petrol) (= (distance petrol south1) 0.1) (= (distance south1 petrol) 0.1) (= (traffic petrol south1) 1) (= (traffic south1 petrol) 1)
                (path lowmarsh2 lowmarsh1) (= (distance lowmarsh2 lowmarsh1) 0.1) (= (traffic lowmarsh2 lowmarsh1) 1) ;one way junction
                (path lowmarsh1 south1) (= (distance lowmarsh1 south1) 0.1) (= (traffic lowmarsh1 south1) 1) ;one way junction
                
                
                (cycle_path north1 north2) (cycle_path north2 north1) (= (distance north1 north2) 0.1) (= (distance north2 north1) 0.1) (= (traffic north1 north2) 1) (= (traffic north2 north1) 1);exclusive cycle connection
                (cycle_path north3 north2) (cycle_path north2 north3) (= (distance north3 north2) 0.1) (= (distance north2 north3) 0.1) (= (traffic north3 north2) 1) (= (traffic north2 north3) 1);exclusive cycle connection
                (cycle_path north3 SSA) (cycle_path SSA north3) (= (distance north3 SSA) 0.1) (= (distance SSA north3) 0.1) (= (traffic north3 SSA) 1) (= (traffic SSA north3) 1);exclusive cycle connection
                (cycle_path j8 j12) (cycle_path j12 j8)
                (cycle_path j9 j11) (cycle_path j11 j9)
                (cycle_path j15 j11) (cycle_path j11 j15)
                (cycle_path j15 petrol) (cycle_path petrol j15)

                ;Orders
                (at_food order1 north1) (deliver_to order1 south1)
                ; (at_food order2 north1) (deliver_to order2 south2)
                ; (at_food order3 north1) (deliver_to order3 Urbanest)
                ; (at_food order4 north2) (deliver_to order4 Urbanest)
                ; (at_food order5 north2) (deliver_to order5 SSA)
                ; (at_food order6 north3) (deliver_to order6 SSA)
                ; (at_food order7 north3) (deliver_to order7 Urbanest)
                ; (at_food order8 south2) (deliver_to order8 SSA)
                ; (at_food order9 south2) (deliver_to order9 Urbanest)
                ; (at_food order10 south1) (deliver_to order10 Urbanest)
                ; (at_food order11 south1) (deliver_to order11 SSA)
                ; (at_food order12 south1) (deliver_to order12 SSA)

                ;Drivers
                ;Km/Minute - Speed
                ;Km/Gallon - Fuel Consumption
                        ;Cycle 1
                        (at_vehicle cycle1 j8)
                        (= (fuel-consumption cycle1) 0);Bikes don't use fuel
                        (= (speed cycle1) 2.7);1/0.37 -> 0.37Km/Minute
                        (= (driver-fuel cycle1) 0);Bikes don't use fuel
                        (= (minutes-left cycle1) 5)
                        (= (capacity cycle1) 1)

                        ; ;Cycle 2
                        ; (at_vehicle cycle2 j15)
                        ; (= (fuel-consumption cycle2) 0);Bikes don't use fuel
                        ; (= (speed cycle2) 2.7);1/0.37 -> 0.37Km/Minute
                        ; (= (driver-fuel cycle2) 0);Bikes don't use fuel
                        ; (= (minutes-left cycle2) 5)
                        ; (= (capacity cycle2) 1)

                        ; ;Cycle 3
                        ; (at_vehicle cycle3 j12)
                        ; (= (fuel-consumption cycle3) 0) ;1/160 -> 160Km/Gallon
                        ; (= (speed cycle3) 2.7);1/0.37 -> 0.42Km/Minute
                        ; (= (driver-fuel cycle3) 0); 1.1 Gallons
                        ; (= (minutes-left cycle3) 5)
                        ; (= (capacity cycle3) 1)

                        ; ;Cycle 4
                        ; (at_vehicle cycle4 j8)
                        ; (= (fuel-consumption cycle4) 0) ;1/140 -> 140Km/Gallon
                        ; (= (speed cycle3) 2.7);1/0.37 -> 0.32Km/Minute
                        ; (= (driver-fuel cycle3) 0); 0.8 Gallons
                        ; (= (minutes-left cycle4) 5)
                        ; (= (capacity cycle4) 1)

                        ; ;Cycle 5
                        ; (at_vehicle cycle4 j10)
                        ; (= (fuel-consumption cycle5) 0) ;Bikes don't use fuel
                        ; (= (speed cycle3) 2.7);1/0.37 -> 0.38Km/Minute
                        ; (= (driver-fuel cycle3) 0);
                        ; (= (minutes-left cycle5) 5)
                        ; (= (capacity cycle5) 1)

                        ;Moped 1
                        ; (at_vehicle moped1 j5)
                        ; (= (fuel-consumption moped1) 0.00625) ;1/160 -> 160Km/Gallon
                        ; (= (speed moped1) 2.38);1/0.42 -> 0.42Km/Minute
                        ; (= (driver-fuel moped1) 0.004); 1.1 Gallons
                        ; (= (minutes-left moped1) 5)
                        ; (= (capacity moped1) 2)

                        ; ;Moped 2
                        ; (at_vehicle moped2 j21)
                        ; (= (fuel-consumption moped2) 0.00625) ;1/160 -> 160Km/Gallon
                        ; (= (speed moped2) 2.38);1/0.42 -> 0.42Km/Minute
                        ; (= (driver-fuel moped2) 0.2); 1.1 Gallons
                        ; (= (minutes-left moped2) 5)
                        ; (= (capacity moped2) 2)

                        ; ;Moped 3
                        ; (at_vehicle moped2 j20)
                        ; (= (fuel-consumption moped3) 0.00625) ;1/160 -> 160Km/Gallon
                        ; (= (speed moped3) 2.38);1/0.42 -> 0.42Km/Minute
                        ; (= (driver-fuel moped3) 0.2); 1.1 Gallons
                        ; (= (minutes-left moped3) 5)
                        ; (= (capacity moped3) 2)

                ;Globals
                (= (total-fuel) 0)
                (= (total-fuel-cost) 0.00375); total fuel cost -> Unused fuel may remain in the tanks of drivers
                (= (max-fuel cycle1) 1)
                (=(fuel-time) 1)
	)
	(:goal (and
                (at_food order1 south1)
                ; (at_food order2 south2)
                ; (at_food order3 Urbanest)
                ; (at_food order4 Urbanest)
                ; (at_food order5 SSA)
                ; (at_food order6 SSA)
                ; (at_food order7 Urbanest)
                ; (at_food order8 SSA)
                ; (at_food order9 Urbanest)
                ; (at_food order10 Urbanest)
                ; (at_food order11 SSA)
                ; (at_food order12 SSA)
        )
	)
	
	(:metric minimize (total-fuel));(total-fuel-cost);(duration)
)