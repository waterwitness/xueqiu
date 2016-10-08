.class public Lcom/xueqiu/android/common/model/parser/PagedGroupParser;
.super Lcom/xueqiu/android/common/model/parser/GroupParser;
.source "PagedGroupParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xueqiu/android/common/model/parser/GroupParser;"
    }
.end annotation


# instance fields
.field private itemsKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/model/parser/Parser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/common/model/parser/Parser",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/model/parser/PagedGroupParser;->itemsKey:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/xueqiu/android/common/model/parser/Parser;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/common/model/parser/Parser",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/model/parser/PagedGroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    .line 20
    iput-object p2, p0, Lcom/xueqiu/android/common/model/parser/PagedGroupParser;->itemsKey:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/common/model/PagedGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/xueqiu/android/common/model/PagedGroup",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/xueqiu/android/common/model/PagedGroup;

    invoke-direct {v0}, Lcom/xueqiu/android/common/model/PagedGroup;-><init>()V

    .line 28
    iget-object v1, p0, Lcom/xueqiu/android/common/model/parser/PagedGroupParser;->itemsKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/common/model/parser/PagedGroupParser;->itemsKey:Ljava/lang/String;

    .line 29
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/common/model/parser/PagedGroupParser;->itemsKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/xueqiu/android/common/model/parser/PagedGroupParser;->itemsKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/model/parser/PagedGroupParser;->parse(Ljava/util/ArrayList;Lorg/json/JSONArray;)V

    .line 33
    :cond_0
    const-string v1, "maxPage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const-string v1, "maxPage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/model/PagedGroup;->setMaxPage(I)V

    .line 36
    :cond_1
    const-string v1, "page"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    const-string v1, "page"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/model/PagedGroup;->setCurrentPage(I)V

    .line 40
    :cond_2
    const-string v1, "count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    const-string v1, "count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/model/PagedGroup;->setTotalCount(I)V

    .line 44
    :cond_3
    const-string v1, "total"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 45
    const-string v1, "total"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/model/PagedGroup;->setTotalCount(I)V

    .line 48
    :cond_4
    const-string v1, "totalCount"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 49
    const-string v1, "totalCount"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/model/PagedGroup;->setTotalCount(I)V

    .line 52
    :cond_5
    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/parser/PagedGroupParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/common/model/PagedGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/parser/PagedGroupParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/common/model/PagedGroup;

    move-result-object v0

    return-object v0
.end method
