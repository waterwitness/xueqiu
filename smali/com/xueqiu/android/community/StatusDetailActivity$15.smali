.class final Lcom/xueqiu/android/community/StatusDetailActivity$15;
.super Ljava/lang/Object;
.source "StatusDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a;

.field final synthetic b:I

.field final synthetic c:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/a;I)V
    .locals 0

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$15;->c:Lcom/xueqiu/android/community/StatusDetailActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$15;->a:Lcom/xueqiu/android/community/a;

    iput p3, p0, Lcom/xueqiu/android/community/StatusDetailActivity$15;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$15;->c:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->f(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$15;->c:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->f(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1127
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$15;->c:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->g(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/app/Dialog;

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$15;->a:Lcom/xueqiu/android/community/a;

    const/4 v1, 0x0

    iget v3, p0, Lcom/xueqiu/android/community/StatusDetailActivity$15;->b:I

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/community/a;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1131
    return-void
.end method
