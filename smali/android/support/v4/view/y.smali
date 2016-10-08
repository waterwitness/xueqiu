.class final Landroid/support/v4/view/y;
.super Landroid/support/v4/view/x;
.source "KeyEventCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/support/v4/view/x;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 147
    .line 1026
    invoke-static {p1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    .line 147
    return v0
.end method

.method public final b(I)Z
    .locals 1

    .prologue
    .line 152
    .line 1030
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    .line 152
    return v0
.end method

.method public final c(I)Z
    .locals 1

    .prologue
    .line 157
    .line 1034
    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    .line 157
    return v0
.end method
