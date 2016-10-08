.class public abstract Landroid/support/v4/a/v;
.super Landroid/support/v4/view/bd;
.source "FragmentPagerAdapter.java"


# instance fields
.field private final b:Landroid/support/v4/a/q;

.field private c:Landroid/support/v4/a/ac;

.field private d:Landroid/support/v4/a/i;


# direct methods
.method public constructor <init>(Landroid/support/v4/a/q;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Landroid/support/v4/view/bd;-><init>()V

    .line 66
    iput-object v0, p0, Landroid/support/v4/a/v;->c:Landroid/support/v4/a/ac;

    .line 67
    iput-object v0, p0, Landroid/support/v4/a/v;->d:Landroid/support/v4/a/i;

    .line 70
    iput-object p1, p0, Landroid/support/v4/a/v;->b:Landroid/support/v4/a/q;

    .line 71
    return-void
.end method

.method private static a(IJ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:switcher:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(I)Landroid/support/v4/a/i;
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 84
    iget-object v0, p0, Landroid/support/v4/a/v;->c:Landroid/support/v4/a/ac;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Landroid/support/v4/a/v;->b:Landroid/support/v4/a/q;

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/a/v;->c:Landroid/support/v4/a/ac;

    .line 2169
    :cond_0
    int-to-long v2, p2

    .line 91
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v0, v2, v3}, Landroid/support/v4/a/v;->a(IJ)Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Landroid/support/v4/a/v;->b:Landroid/support/v4/a/q;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_2

    .line 95
    iget-object v1, p0, Landroid/support/v4/a/v;->c:Landroid/support/v4/a/ac;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->f(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 102
    :goto_0
    iget-object v1, p0, Landroid/support/v4/a/v;->d:Landroid/support/v4/a/i;

    if-eq v0, v1, :cond_1

    .line 103
    invoke-virtual {v0, v6}, Landroid/support/v4/a/i;->d(Z)V

    .line 104
    invoke-virtual {v0, v6}, Landroid/support/v4/a/i;->e(Z)V

    .line 107
    :cond_1
    return-object v0

    .line 97
    :cond_2
    invoke-virtual {p0, p2}, Landroid/support/v4/a/v;->a(I)Landroid/support/v4/a/i;

    move-result-object v0

    .line 99
    iget-object v1, p0, Landroid/support/v4/a/v;->c:Landroid/support/v4/a/ac;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-static {v5, v2, v3}, Landroid/support/v4/a/v;->a(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v0, v2}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/v4/a/v;->c:Landroid/support/v4/a/ac;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Landroid/support/v4/a/v;->c:Landroid/support/v4/a/ac;

    invoke-virtual {v0}, Landroid/support/v4/a/ac;->e()I

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/a/v;->c:Landroid/support/v4/a/ac;

    .line 141
    iget-object v0, p0, Landroid/support/v4/a/v;->b:Landroid/support/v4/a/q;

    invoke-virtual {v0}, Landroid/support/v4/a/q;->b()Z

    .line 143
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v4/a/v;->c:Landroid/support/v4/a/ac;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Landroid/support/v4/a/v;->b:Landroid/support/v4/a/q;

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/a/v;->c:Landroid/support/v4/a/ac;

    .line 117
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/v;->c:Landroid/support/v4/a/ac;

    check-cast p3, Landroid/support/v4/a/i;

    invoke-virtual {v0, p3}, Landroid/support/v4/a/ac;->e(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 118
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 147
    check-cast p2, Landroid/support/v4/a/i;

    .line 2240
    iget-object v0, p2, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 147
    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    check-cast p3, Landroid/support/v4/a/i;

    .line 123
    iget-object v0, p0, Landroid/support/v4/a/v;->d:Landroid/support/v4/a/i;

    if-eq p3, v0, :cond_2

    .line 124
    iget-object v0, p0, Landroid/support/v4/a/v;->d:Landroid/support/v4/a/i;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/support/v4/a/v;->d:Landroid/support/v4/a/i;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/i;->d(Z)V

    .line 126
    iget-object v0, p0, Landroid/support/v4/a/v;->d:Landroid/support/v4/a/i;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/i;->e(Z)V

    .line 128
    :cond_0
    if-eqz p3, :cond_1

    .line 129
    invoke-virtual {p3, v2}, Landroid/support/v4/a/i;->d(Z)V

    .line 130
    invoke-virtual {p3, v2}, Landroid/support/v4/a/i;->e(Z)V

    .line 132
    :cond_1
    iput-object p3, p0, Landroid/support/v4/a/v;->d:Landroid/support/v4/a/i;

    .line 134
    :cond_2
    return-void
.end method
