.class final Lcom/xueqiu/android/message/ApplyListActivity$1$1;
.super Ljava/lang/Object;
.source "ApplyListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ApplyListActivity$1;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/model/Apply;

.field final synthetic b:Lcom/xueqiu/android/message/ApplyListActivity$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ApplyListActivity$1;Lcom/xueqiu/android/message/model/Apply;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/xueqiu/android/message/ApplyListActivity$1$1;->b:Lcom/xueqiu/android/message/ApplyListActivity$1;

    iput-object p2, p0, Lcom/xueqiu/android/message/ApplyListActivity$1$1;->a:Lcom/xueqiu/android/message/model/Apply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 64
    if-nez p2, :cond_0

    .line 65
    iget-object v0, p0, Lcom/xueqiu/android/message/ApplyListActivity$1$1;->b:Lcom/xueqiu/android/message/ApplyListActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/message/ApplyListActivity$1;->a:Lcom/xueqiu/android/message/ApplyListActivity;

    iget-object v1, p0, Lcom/xueqiu/android/message/ApplyListActivity$1$1;->a:Lcom/xueqiu/android/message/model/Apply;

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/ApplyListActivity;->a(Lcom/xueqiu/android/message/ApplyListActivity;Lcom/xueqiu/android/message/model/Apply;)V

    .line 67
    :cond_0
    return-void
.end method
