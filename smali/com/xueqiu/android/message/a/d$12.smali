.class final Lcom/xueqiu/android/message/a/d$12;
.super Ljava/lang/Object;
.source "ChatAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/a/d;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/a/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/d;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/xueqiu/android/message/a/d$12;->a:Lcom/xueqiu/android/message/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d$12;->a:Lcom/xueqiu/android/message/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/d;->notifyDataSetChanged()V

    .line 466
    return-void
.end method
