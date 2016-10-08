.class final Lcom/xueqiu/android/base/b/c$17;
.super Ljava/lang/Object;
.source "CubeClient.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/c;->b(JLjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/model/parser/Parser",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/c;)V
    .locals 0

    .prologue
    .line 818
    iput-object p1, p0, Lcom/xueqiu/android/base/b/c$17;->a:Lcom/xueqiu/android/base/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 818
    .line 1821
    const-string v0, "rank_percent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1822
    const-string v0, "rank_percent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1824
    :cond_0
    const/4 v0, 0x0

    .line 818
    goto :goto_0
.end method

.method public final parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 830
    const/4 v0, 0x0

    return-object v0
.end method
