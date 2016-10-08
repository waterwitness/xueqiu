.class final Lcom/xueqiu/android/base/b/ak$5;
.super Ljava/lang/Object;
.source "StockClient.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/ak;->a(Ljava/lang/String;Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
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
.field final synthetic a:Lcom/xueqiu/android/base/b/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/ak;)V
    .locals 0

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/xueqiu/android/base/b/ak$5;->a:Lcom/xueqiu/android/base/b/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1138
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v1, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v1}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1143
    const/4 v0, 0x0

    return-object v0
.end method
