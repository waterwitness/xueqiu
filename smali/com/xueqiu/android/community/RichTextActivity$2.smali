.class final Lcom/xueqiu/android/community/RichTextActivity$2;
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
    .line 127
    iput-object p1, p0, Lcom/xueqiu/android/community/RichTextActivity$2;->a:Lcom/xueqiu/android/community/RichTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity$2;->a:Lcom/xueqiu/android/community/RichTextActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/RichTextActivity;->onBackPressed()V

    .line 131
    return-void
.end method
