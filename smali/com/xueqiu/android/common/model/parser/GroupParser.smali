.class public Lcom/xueqiu/android/common/model/parser/GroupParser;
.super Lcom/xueqiu/android/common/model/parser/AbstractParser;
.source "GroupParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/model/parser/AbstractParser",
        "<",
        "Ljava/util/ArrayList;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mSubParser:Lcom/xueqiu/android/common/model/parser/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/model/parser/Parser",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/model/parser/Parser;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/xueqiu/android/common/model/parser/AbstractParser;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/xueqiu/android/common/model/parser/GroupParser;->mSubParser:Lcom/xueqiu/android/common/model/parser/Parser;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Ljava/util/ArrayList;Lorg/json/JSONArray;)V

    .line 63
    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 42
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    instance-of v3, v0, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    .line 46
    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Ljava/util/ArrayList;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Could not parse data."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    return-object v1
.end method

.method protected parse(Ljava/util/ArrayList;Lorg/json/JSONArray;)V
    .locals 4

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 69
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v0, v3, :cond_0

    .line 72
    instance-of v3, v0, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/xueqiu/android/common/model/parser/GroupParser;->mSubParser:Lcom/xueqiu/android/common/model/parser/Parser;

    check-cast v0, Lorg/json/JSONArray;

    invoke-interface {v3, v0}, Lcom/xueqiu/android/common/model/parser/Parser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 77
    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/xueqiu/android/common/model/parser/GroupParser;->mSubParser:Lcom/xueqiu/android/common/model/parser/Parser;

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v3, v0}, Lcom/xueqiu/android/common/model/parser/Parser;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 80
    :cond_2
    return-void
.end method
