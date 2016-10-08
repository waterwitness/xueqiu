.class final Lcom/xueqiu/android/message/a/a$2$1;
.super Ljava/lang/Object;
.source "AlphabetIndexUserAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/a/a$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/a/a$2;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/a$2;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/xueqiu/android/message/a/a$2$1;->a:Lcom/xueqiu/android/message/a/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a$2$1;->a:Lcom/xueqiu/android/message/a/a$2;

    iget-object v0, v0, Lcom/xueqiu/android/message/a/a$2;->b:Lcom/xueqiu/android/message/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/a;->a()V

    .line 494
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a$2$1;->a:Lcom/xueqiu/android/message/a/a$2;

    iget-object v0, v0, Lcom/xueqiu/android/message/a/a$2;->b:Lcom/xueqiu/android/message/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/a;->notifyDataSetChanged()V

    .line 495
    return-void
.end method
