.class final Lcom/xueqiu/android/community/widget/j$2;
.super Ljava/lang/Object;
.source "TopicInputBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/widget/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/widget/j;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/widget/j;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/j$2;->a:Lcom/xueqiu/android/community/widget/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j$2;->a:Lcom/xueqiu/android/community/widget/j;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/j;->b(Lcom/xueqiu/android/community/widget/j;)Landroid/widget/GridView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 91
    return-void
.end method
