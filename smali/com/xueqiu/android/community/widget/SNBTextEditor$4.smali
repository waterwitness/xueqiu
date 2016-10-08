.class final Lcom/xueqiu/android/community/widget/SNBTextEditor$4;
.super Ljava/lang/Object;
.source "SNBTextEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(I)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/community/widget/SNBTextEditor;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;I)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$4;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    iput p2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$4;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    iget v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$4;->a:I

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;I)V

    .line 450
    return-void
.end method
