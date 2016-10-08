.class final Lcom/xueqiu/android/base/b/aj$20;
.super Ljava/lang/Object;
.source "StatusClient.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/aj;->a(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/model/parser/Parser",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/aj;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/aj;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/xueqiu/android/base/b/aj$20;->a:Lcom/xueqiu/android/base/b/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 370
    .line 1375
    new-instance v0, Lcom/xueqiu/android/base/b/aj$20$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/b/aj$20$1;-><init>(Lcom/xueqiu/android/base/b/aj$20;)V

    .line 1376
    invoke-virtual {v0}, Lcom/xueqiu/android/base/b/aj$20$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1377
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 1380
    invoke-static {v0, p1}, Lcom/xueqiu/android/base/util/ap;->a(Lcom/xueqiu/android/community/model/Status;Lorg/json/JSONObject;)Lcom/xueqiu/android/community/model/Status;

    .line 370
    return-object v0
.end method

.method public final parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return-object v0
.end method
