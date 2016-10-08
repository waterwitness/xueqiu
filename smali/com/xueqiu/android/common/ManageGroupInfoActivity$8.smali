.class final Lcom/xueqiu/android/common/ManageGroupInfoActivity$8;
.super Ljava/lang/Object;
.source "ManageGroupInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/ManageGroupInfoActivity;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/xueqiu/android/common/ManageGroupInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/ManageGroupInfoActivity;IZ)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$8;->c:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    iput p2, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$8;->a:I

    iput-boolean p3, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$8;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$8;->c:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    iget v1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$8;->a:I

    iget-boolean v2, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$8;->b:Z

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->a(Lcom/xueqiu/android/common/ManageGroupInfoActivity;IZ)V

    .line 305
    return-void
.end method
