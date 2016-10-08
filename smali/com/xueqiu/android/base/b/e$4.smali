.class final Lcom/xueqiu/android/base/b/e$4;
.super Ljava/lang/Object;
.source "InvestmentCalendarClient.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/e;->b(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/model/parser/Parser",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/e;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/xueqiu/android/base/b/e$4;->a:Lcom/xueqiu/android/base/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 622
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 623
    const-string v1, "2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 625
    invoke-static {v0}, Lcom/xueqiu/android/base/b/e;->b(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    .line 626
    invoke-static {v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v1

    .line 628
    new-instance v2, Lcom/xueqiu/android/stock/model/EventCalListPair;

    invoke-direct {v2}, Lcom/xueqiu/android/stock/model/EventCalListPair;-><init>()V

    .line 629
    iput-object v1, v2, Lcom/xueqiu/android/stock/model/EventCalListPair;->mEvent:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    .line 630
    iput-object v0, v2, Lcom/xueqiu/android/stock/model/EventCalListPair;->mCalList:Ljava/util/ArrayList;

    .line 631
    const/4 v0, 0x0

    return-object v0
.end method

.method public final parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 636
    const/4 v0, 0x0

    return-object v0
.end method
