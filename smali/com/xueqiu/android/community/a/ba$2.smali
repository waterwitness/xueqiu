.class final Lcom/xueqiu/android/community/a/ba$2;
.super Ljava/lang/Object;
.source "UserListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/ba;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Lcom/xueqiu/android/community/a/ba;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ba;Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ba$2;->b:Lcom/xueqiu/android/community/a/ba;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ba$2;->a:Lcom/xueqiu/android/community/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba$2;->b:Lcom/xueqiu/android/community/a/ba;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ba;->c(Lcom/xueqiu/android/community/a/ba;)Lcom/xueqiu/android/community/a/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ba$2;->a:Lcom/xueqiu/android/community/model/User;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/community/a/bb;->a(Lcom/xueqiu/android/community/model/User;)V

    .line 227
    return-void
.end method
