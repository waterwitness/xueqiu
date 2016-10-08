.class final Lcom/xueqiu/android/message/ApplyListActivity$2;
.super Ljava/lang/Object;
.source "ApplyListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ApplyListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ApplyListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ApplyListActivity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/xueqiu/android/message/ApplyListActivity$2;->a:Lcom/xueqiu/android/message/ApplyListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 90
    invoke-static {}, Lcom/xueqiu/android/message/ApplyListActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    const-wide/16 v2, -0x1

    new-instance v1, Lcom/xueqiu/android/message/ApplyListActivity$2$1;

    iget-object v4, p0, Lcom/xueqiu/android/message/ApplyListActivity$2;->a:Lcom/xueqiu/android/message/ApplyListActivity;

    invoke-direct {v1, p0, v4}, Lcom/xueqiu/android/message/ApplyListActivity$2$1;-><init>(Lcom/xueqiu/android/message/ApplyListActivity$2;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->o(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 106
    return-void
.end method
