.class final Lcom/xueqiu/android/base/b/ap$1$1;
.super Ljava/lang/Object;
.source "WeiBoAuthorize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/ap$1;->onComplete(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/ap$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/ap$1;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/xueqiu/android/base/b/ap$1$1;->a:Lcom/xueqiu/android/base/b/ap$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ap$1$1;->a:Lcom/xueqiu/android/base/b/ap$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/b/ap$1;->a:Lcom/xueqiu/android/base/b/i;

    invoke-interface {v0}, Lcom/xueqiu/android/base/b/i;->a()V

    .line 95
    return-void
.end method
