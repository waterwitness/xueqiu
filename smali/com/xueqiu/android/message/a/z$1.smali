.class final Lcom/xueqiu/android/message/a/z$1;
.super Ljava/lang/Object;
.source "TalkListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/a/z;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/a/z;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/z;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/xueqiu/android/message/a/z$1;->a:Lcom/xueqiu/android/message/a/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/xueqiu/android/message/a/z$1;->a:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/z;->notifyDataSetChanged()V

    .line 396
    return-void
.end method
