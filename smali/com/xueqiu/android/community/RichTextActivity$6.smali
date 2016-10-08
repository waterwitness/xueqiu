.class final Lcom/xueqiu/android/community/RichTextActivity$6;
.super Ljava/lang/Object;
.source "RichTextActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/RichTextActivity;->onBackPressed()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/RichTextActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/RichTextActivity;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/xueqiu/android/community/RichTextActivity$6;->a:Lcom/xueqiu/android/community/RichTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity$6;->a:Lcom/xueqiu/android/community/RichTextActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/android/community/RichTextActivity;->j:Z

    .line 236
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity$6;->a:Lcom/xueqiu/android/community/RichTextActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/RichTextActivity;->finish()V

    .line 237
    return-void
.end method
