.class final Lcom/xueqiu/android/common/ManageGroupInfoActivity$2;
.super Ljava/lang/Object;
.source "ManageGroupInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/ManageGroupInfoActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$2;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$2;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->finish()V

    .line 145
    return-void
.end method
