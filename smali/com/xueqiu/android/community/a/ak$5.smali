.class final Lcom/xueqiu/android/community/a/ak$5;
.super Ljava/lang/Object;
.source "StatusListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/ak;->a(Landroid/view/View;Lcom/xueqiu/android/community/model/Status;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Status;

.field final synthetic b:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$5;->b:Lcom/xueqiu/android/community/a/ak;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ak$5;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$5;->b:Lcom/xueqiu/android/community/a/ak;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$5;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/a/ak;->b(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V

    .line 660
    return-void
.end method
