.class final Lcom/xueqiu/android/community/widget/SNBTextEditor$11$1;
.super Ljava/lang/Object;
.source "SNBTextEditor.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/widget/SNBTextEditor$11;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/widget/SNBTextEditor$11;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11$1;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11$1;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor$11;

    iget-object v0, v0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->j(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 238
    return-void
.end method
