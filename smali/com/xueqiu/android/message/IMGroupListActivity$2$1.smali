.class final Lcom/xueqiu/android/message/IMGroupListActivity$2$1;
.super Ljava/lang/Object;
.source "IMGroupListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/IMGroupListActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/model/Talk;

.field final synthetic b:Lcom/xueqiu/android/message/IMGroupListActivity$2;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/IMGroupListActivity$2;Lcom/xueqiu/android/message/model/Talk;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/xueqiu/android/message/IMGroupListActivity$2$1;->b:Lcom/xueqiu/android/message/IMGroupListActivity$2;

    iput-object p2, p0, Lcom/xueqiu/android/message/IMGroupListActivity$2$1;->a:Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity$2$1;->b:Lcom/xueqiu/android/message/IMGroupListActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/message/IMGroupListActivity$2;->b:Lcom/xueqiu/android/message/IMGroupListActivity;

    iget-object v1, p0, Lcom/xueqiu/android/message/IMGroupListActivity$2$1;->a:Lcom/xueqiu/android/message/model/Talk;

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/IMGroupListActivity;->a(Lcom/xueqiu/android/message/IMGroupListActivity;Lcom/xueqiu/android/message/model/Talk;)V

    .line 136
    return-void
.end method
