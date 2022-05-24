# Cấu trúc dự án

```js
lib                                      
├─ src                                   
│  ├─ business_logic                    
│  │     cubits (Lấy dữ liệu từ API)                          
│  │     ├─ `page_view_navigation_cubit.dart` (Di chuyển qua lại giữa các page views trong Speaking Part 1 Screen)                    
│  │     ├─ `quy_cubit.dart` (Xác định quý nào trong năm để hiện trong Speaking Part 1)                 
│  │     ├─ `speaking_part2_cubit.dart` (Lấy dữ liệu Speaking Part 2)      
│  │     ├─ `speaking_topics_quy1_cubit.dart` (Lấy dữ liệu Speaking Part 1 Quý 1)
│  │     └─ `speaking_topics_quy2_cubit.dart` (Lấy dữ liệu Speaking Part 1 Quý 2) 
│  ├─ data                           
│  │  └─ data_providers (Nguồn cung cấp dữ liệu Speaking)                          
│  │     ├─ `speaking_topics_provider.dart`                
│  │     models                     
│  │     ├─`topic_quy1.dart` 
│  │     └─`topic_quy2.dart`  
│  └─ views                           
│     ├─ screens                          
│     │   ├─ page_view (Những Page views của Speaking Part 1 Screen) 
│     │   │  └─ `page_view_speaking_part1_quy1.dart` 
│     │   │  └─ `page_view_speaking_part1_quy2.dart` 
│     │   ├─ `customized_bar_chart.dart` (Bar chart để thể hiện dữ liệu cho Speaking Part 1)                                    
│     │   ├─ `home_screen.dart`
│     │   ├─ `speaking_part1_screen.dart`
│     │   ├─ `speaking_part2_screen.dart`               
│     │   utils                              
│     │   ├─ `style.dart` (Màu sắc cho bar chart)
│     │   │  ├─ `router.dart` (Di chuyển giữa các màn hình)
│     │   │  ├─ `title_row.dart` (Chú thích cho các loại trong bar chart)               
│     └─ `app.dart` (Điểm khởi đầu của ứng dụng)                            
│                               
└─ `main.dart` (Hàm main)                            
```

