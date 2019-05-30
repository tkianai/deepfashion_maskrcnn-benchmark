# 数据格式

- 训练数据

|      | 训练   | 验证  | 测试  |
| ---- | ------ | ----- | ----- |
| 图片 | 191961 | 32153 | 62629 |
| 标注 | 312186 | 51490 |       |

- 每一张图片对应一个标注文件（json格式）

- 标注文件格式

每个标注文件是个字典，包含一下几个关键字：

1. source: 表示图片来源
2. pair_id: 相同的数值表示图片来自于同一个商店
3. itm: 这也是一个字典(item1, item2, ...)，包含如下关键字：
    - category_name: 种类
    - category_id: 种类对应的id
    - style: 用来区分具有相同pair_id的图片中不同的item
    - bounding_box: [x1, y1, x2, y2]
    - landmarks: [x1, y1, v1, ...]，其中v代表可见度，v=2表示可见，v=1表示有遮挡，v=0表示没有标注。
    - segmentation: [[x1,y1,...],[], ...]
    - scale: 小（1）， 中（2）， 大（3）
    - occlusion: 少量（1）， 中度（2）， 重度（3）
    - zoom_in: 没有（1）， 中等（2）， 大（3）
    - viewpoint: no ware（1）， 正面（2）， 侧面或背面（3）

其中category_id的定义如下：
```
1 represents short sleeve top, 
2 represents long sleeve top, 
3 represents short sleeve outwear,
4 represents long sleeve outwear, 
5 represents vest, 
6 represents sling, 
7 represents shorts, 
8 represents trousers, 
9 represents skirt, 
10 represents short sleeve dress, 
11 represents long sleeve dress, 
12 represents vest dress， 
13 represents sling dress.
 ```

 官方提供了将该数据集转换为COCO数据格式的脚本。