.class final Lme/grantland/widget/c;
.super Ljava/lang/Object;
.source "AutofitHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lme/grantland/widget/a;


# direct methods
.method private constructor <init>(Lme/grantland/widget/a;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lme/grantland/widget/c;->a:Lme/grantland/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/grantland/widget/a;B)V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lme/grantland/widget/c;-><init>(Lme/grantland/widget/a;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 532
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 522
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lme/grantland/widget/c;->a:Lme/grantland/widget/a;

    .line 1031
    invoke-virtual {v0}, Lme/grantland/widget/a;->a()V

    .line 527
    return-void
.end method
