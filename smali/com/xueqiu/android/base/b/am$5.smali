.class final Lcom/xueqiu/android/base/b/am$5;
.super Lcom/google/gson/reflect/TypeToken;
.source "TradeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/am;->b(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/trade/model/OrderSheet;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/am;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/am;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/xueqiu/android/base/b/am$5;->a:Lcom/xueqiu/android/base/b/am;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
