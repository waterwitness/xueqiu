.class final Lcom/xueqiu/android/community/WriteStatusActivity$5;
.super Ljava/lang/Object;
.source "WriteStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$5;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$5;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->v(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 671
    const/4 v0, 0x0

    return v0
.end method
