.class final Lcom/xueqiu/android/base/b/aj$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "StatusClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/aj;->a(ILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/aj;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/aj;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/xueqiu/android/base/b/aj$2;->a:Lcom/xueqiu/android/base/b/aj;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
