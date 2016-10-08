.class final Lcom/xueqiu/android/base/b/c$24;
.super Lcom/google/gson/reflect/TypeToken;
.source "CubeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/c;->b(JLjava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Lcom/xueqiu/android/common/model/PagedList",
        "<",
        "Lcom/xueqiu/android/cube/model/Rebalancing;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/c;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/xueqiu/android/base/b/c$24;->a:Lcom/xueqiu/android/base/b/c;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
