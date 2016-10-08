.class final Lcom/xueqiu/android/base/b/ak$9;
.super Ljava/lang/Object;
.source "StockClient.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/ak;->d(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/model/parser/Parser",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/ak;)V
    .locals 0

    .prologue
    .line 1391
    iput-object p1, p0, Lcom/xueqiu/android/base/b/ak$9;->a:Lcom/xueqiu/android/base/b/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1391
    return-object p1
.end method

.method public final parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1395
    const/4 v0, 0x0

    return-object v0
.end method
