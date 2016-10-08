.class public Lcom/snowballfinance/messageplatform/data/View;
.super Ljava/lang/Object;
.source "View.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static multiTextImage([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 38
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 39
    const-string v1, "type"

    sget-object v2, Lcom/snowballfinance/messageplatform/data/View$ViewType;->MULTI_TEXT_IMAGE:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/data/View$ViewType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    .line 41
    const-string v1, "list"

    invoke-virtual {v3, v1, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 43
    array-length v5, p0

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v6, p0, v1

    .line 44
    aget-object v0, p1, v2

    .line 45
    aget-object v7, p2, v2

    .line 46
    if-eqz v0, :cond_0

    .line 47
    sget-object v8, Lcom/snowballfinance/messageplatform/b/c;->b:Lcom/snowballfinance/messageplatform/b/c;

    invoke-virtual {v8}, Lcom/snowballfinance/messageplatform/b/c;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/snowballfinance/messageplatform/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    if-nez v2, :cond_1

    .line 49
    const/16 v8, 0x21c

    const/16 v9, 0x118

    invoke-static {v0, v8, v9}, Lcom/snowballfinance/messageplatform/b/b;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_0
    :goto_1
    new-instance v8, Lcom/google/gson/JsonObject;

    invoke-direct {v8}, Lcom/google/gson/JsonObject;-><init>()V

    .line 56
    invoke-virtual {v4, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 57
    const-string v9, "title"

    invoke-virtual {v8, v9, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v6, "image"

    invoke-virtual {v8, v6, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "url"

    invoke-virtual {v8, v0, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 52
    :cond_1
    const/16 v8, 0xa0

    const/16 v9, 0x78

    invoke-static {v0, v8, v9}, Lcom/snowballfinance/messageplatform/b/b;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 98
    const-string v1, "type"

    sget-object v2, Lcom/snowballfinance/messageplatform/data/View$ViewType;->POST:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/data/View$ViewType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "text"

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "user"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "image"

    invoke-virtual {v0, v1, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "url"

    invoke-virtual {v0, v1, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static simpleText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 15
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 16
    const-string v1, "type"

    sget-object v2, Lcom/snowballfinance/messageplatform/data/View$ViewType;->SIMPLE_TEXT:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/data/View$ViewType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stock(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 67
    const-string v1, "type"

    sget-object v2, Lcom/snowballfinance/messageplatform/data/View$ViewType;->STOCK:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/data/View$ViewType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "symbol"

    invoke-virtual {v0, v1, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "exchange"

    invoke-virtual {v0, v1, p5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "changePercentage"

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 72
    const-string v1, "change"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 73
    const-string v1, "price"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 74
    const-string v1, "unit"

    invoke-virtual {v0, v1, p6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "icon"

    invoke-virtual {v0, v1, p7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "url"

    invoke-virtual {v0, v1, p8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static textImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 24
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 25
    if-eqz p2, :cond_0

    .line 26
    sget-object v1, Lcom/snowballfinance/messageplatform/b/c;->b:Lcom/snowballfinance/messageplatform/b/c;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/snowballfinance/messageplatform/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    const/16 v2, 0x21c

    const/16 v3, 0x118

    invoke-static {v1, v2, v3}, Lcom/snowballfinance/messageplatform/b/b;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p2

    .line 29
    :cond_0
    const-string v1, "type"

    sget-object v2, Lcom/snowballfinance/messageplatform/data/View$ViewType;->TEXT_IMAGE:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/data/View$ViewType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "image"

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "url"

    invoke-virtual {v0, v1, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static userInfo(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/snowballfinance/messageplatform/data/VerifiedType;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 82
    const-string v1, "type"

    sget-object v2, Lcom/snowballfinance/messageplatform/data/View$ViewType;->USER_INFO:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/data/View$ViewType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 84
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "fans"

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 86
    const-string v1, "posts"

    invoke-virtual {v0, v1, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 87
    const-string v1, "stocks"

    invoke-virtual {v0, v1, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 88
    const-string v1, "icon"

    invoke-virtual {v0, v1, p5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "url"

    invoke-virtual {v0, v1, p7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    if-eqz p6, :cond_0

    .line 91
    const-string v1, "vtype"

    invoke-virtual {p6}, Lcom/snowballfinance/messageplatform/data/VerifiedType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 93
    :cond_0
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
