.class public final Lcom/bairuitech/b/a;
.super Ljava/lang/Object;
.source "BaseMethod.java"


# direct methods
.method public static a(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 28
    return-void
.end method
