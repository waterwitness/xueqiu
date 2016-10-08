.class final Lcom/xueqiu/android/community/RichTextActivity$3;
.super Ljava/lang/Object;
.source "RichTextActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/RichTextActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/RichTextActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/RichTextActivity;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/xueqiu/android/community/RichTextActivity$3;->a:Lcom/xueqiu/android/community/RichTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity$3;->a:Lcom/xueqiu/android/community/RichTextActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/RichTextActivity;->a(Lcom/xueqiu/android/community/RichTextActivity;)Lcom/xueqiu/android/community/widget/SNBTextEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->send()V

    .line 138
    return-void
.end method
