.class final Lcom/xueqiu/android/stock/c/aa$2;
.super Ljava/lang/Object;
.source "USETFRankFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/aa;->u()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/model/parser/Parser",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/stock/model/OldPortFolio;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/aa;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/aa;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/aa$2;->a:Lcom/xueqiu/android/stock/c/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1128
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v1, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v1}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    const-string v1, "stocks"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 125
    return-object v0
.end method

.method public final parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method
