.class public Lcom/xueqiu/android/message/model/ApplyCount$Parser;
.super Lcom/xueqiu/android/common/model/parser/AbstractParser;
.source "ApplyCount.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/model/parser/AbstractParser",
        "<",
        "Lcom/xueqiu/android/message/model/ApplyCount;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/xueqiu/android/common/model/parser/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/message/model/ApplyCount;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/xueqiu/android/message/model/ApplyCount;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/ApplyCount;-><init>()V

    .line 54
    const-string v1, "count"

    invoke-static {p1, v1, v2}, Lcom/xueqiu/android/message/model/ApplyCount$Parser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/ApplyCount;->setCount(I)V

    .line 55
    const-string v1, "unread"

    invoke-static {p1, v1, v2}, Lcom/xueqiu/android/message/model/ApplyCount$Parser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/ApplyCount;->setUnread(I)V

    .line 56
    const-string v1, "last_join_summary"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/xueqiu/android/message/model/ApplyCount$Parser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/ApplyCount;->setSummary(Ljava/lang/String;)V

    .line 57
    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/model/ApplyCount$Parser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/message/model/ApplyCount;

    move-result-object v0

    return-object v0
.end method
