.class final Lcom/xueqiu/android/community/a/bd$1;
.super Ljava/lang/Object;
.source "UsersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/bd;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Lcom/xueqiu/android/community/a/bd;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/bd;Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/xueqiu/android/community/a/bd$1;->b:Lcom/xueqiu/android/community/a/bd;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/bd$1;->a:Lcom/xueqiu/android/community/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
