.class final Lcom/xueqiu/android/base/b/s$1;
.super Ljava/lang/Object;
.source "RxHttpClient.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/s;->a(Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/ai;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/base/b/s$1;->a:Lcom/xueqiu/android/base/b/ai;

    iput-object p2, p0, Lcom/xueqiu/android/base/b/s$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 21
    check-cast p1, Lrx/i;

    .line 1024
    iget-object v0, p0, Lcom/xueqiu/android/base/b/s$1;->a:Lcom/xueqiu/android/base/b/ai;

    iget-object v1, p0, Lcom/xueqiu/android/base/b/s$1;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-instance v3, Lcom/xueqiu/android/base/b/s$1$1;

    invoke-direct {v3, p0, p1}, Lcom/xueqiu/android/base/b/s$1$1;-><init>(Lcom/xueqiu/android/base/b/s$1;Lrx/i;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 21
    return-void
.end method
