.class final Lcom/xueqiu/android/base/b/an$4;
.super Ljava/lang/Object;
.source "UserClient.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/an;->h(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
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
.field final synthetic a:Lcom/xueqiu/android/base/b/an;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/an;)V
    .locals 0

    .prologue
    .line 845
    iput-object p1, p0, Lcom/xueqiu/android/base/b/an$4;->a:Lcom/xueqiu/android/base/b/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 845
    .line 1848
    const-string v0, "success"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1849
    const-string v0, "success"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1851
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public final parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 856
    const/4 v0, 0x0

    return-object v0
.end method
