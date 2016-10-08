.class public final Landroid/support/v4/a/a;
.super Landroid/support/v4/content/g;
.source "ActivityCompat.java"


# direct methods
.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1034
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
