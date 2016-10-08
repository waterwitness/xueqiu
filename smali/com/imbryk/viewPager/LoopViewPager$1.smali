.class final Lcom/imbryk/viewPager/LoopViewPager$1;
.super Ljava/lang/Object;
.source "LoopViewPager.java"

# interfaces
.implements Landroid/support/v4/view/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imbryk/viewPager/LoopViewPager;
.end annotation


# instance fields
.field final synthetic a:Lcom/imbryk/viewPager/LoopViewPager;

.field private b:F

.field private c:F


# direct methods
.method constructor <init>(Lcom/imbryk/viewPager/LoopViewPager;)V
    .locals 1

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 158
    iput-object p1, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput v0, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->b:F

    .line 160
    iput v0, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->c:F

    return-void
.end method


# virtual methods
.method public final a(IFI)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 177
    .line 178
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    invoke-static {v0}, Lcom/imbryk/viewPager/LoopViewPager;->a(Lcom/imbryk/viewPager/LoopViewPager;)Lcom/imbryk/viewPager/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    invoke-static {v0}, Lcom/imbryk/viewPager/LoopViewPager;->a(Lcom/imbryk/viewPager/LoopViewPager;)Lcom/imbryk/viewPager/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/imbryk/viewPager/a;->a(I)I

    move-result v0

    .line 181
    cmpl-float v1, p2, v4

    if-nez v1, :cond_1

    iget v1, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->b:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    .line 183
    invoke-static {v1}, Lcom/imbryk/viewPager/LoopViewPager;->a(Lcom/imbryk/viewPager/LoopViewPager;)Lcom/imbryk/viewPager/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imbryk/viewPager/a;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    invoke-virtual {v1, v0, v5}, Lcom/imbryk/viewPager/LoopViewPager;->a(IZ)V

    :cond_1
    move p1, v0

    .line 188
    :cond_2
    iput p2, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->b:F

    .line 189
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    iget-object v0, v0, Lcom/imbryk/viewPager/LoopViewPager;->b:Landroid/support/v4/view/cp;

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    invoke-static {v0}, Lcom/imbryk/viewPager/LoopViewPager;->a(Lcom/imbryk/viewPager/LoopViewPager;)Lcom/imbryk/viewPager/a;

    move-result-object v0

    .line 1085
    iget-object v0, v0, Lcom/imbryk/viewPager/a;->b:Landroid/support/v4/view/bd;

    invoke-virtual {v0}, Landroid/support/v4/view/bd;->b()I

    move-result v0

    .line 190
    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_4

    .line 191
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    iget-object v0, v0, Lcom/imbryk/viewPager/LoopViewPager;->b:Landroid/support/v4/view/cp;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/cp;->a(IFI)V

    .line 202
    :cond_3
    :goto_0
    return-void

    .line 194
    :cond_4
    float-to-double v0, p2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    .line 195
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    iget-object v0, v0, Lcom/imbryk/viewPager/LoopViewPager;->b:Landroid/support/v4/view/cp;

    invoke-interface {v0, v5, v4, v5}, Landroid/support/v4/view/cp;->a(IFI)V

    goto :goto_0

    .line 197
    :cond_5
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    iget-object v0, v0, Lcom/imbryk/viewPager/LoopViewPager;->b:Landroid/support/v4/view/cp;

    invoke-interface {v0, p1, v4, v5}, Landroid/support/v4/view/cp;->a(IFI)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    invoke-static {v0}, Lcom/imbryk/viewPager/LoopViewPager;->a(Lcom/imbryk/viewPager/LoopViewPager;)Lcom/imbryk/viewPager/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    invoke-static {v0}, Lcom/imbryk/viewPager/LoopViewPager;->b(Lcom/imbryk/viewPager/LoopViewPager;)I

    move-result v0

    .line 208
    iget-object v1, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    invoke-static {v1}, Lcom/imbryk/viewPager/LoopViewPager;->a(Lcom/imbryk/viewPager/LoopViewPager;)Lcom/imbryk/viewPager/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/imbryk/viewPager/a;->a(I)I

    move-result v1

    .line 209
    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    .line 210
    invoke-static {v2}, Lcom/imbryk/viewPager/LoopViewPager;->a(Lcom/imbryk/viewPager/LoopViewPager;)Lcom/imbryk/viewPager/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imbryk/viewPager/a;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/imbryk/viewPager/LoopViewPager;->a(IZ)V

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    iget-object v0, v0, Lcom/imbryk/viewPager/LoopViewPager;->b:Landroid/support/v4/view/cp;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    iget-object v0, v0, Lcom/imbryk/viewPager/LoopViewPager;->b:Landroid/support/v4/view/cp;

    invoke-interface {v0, p1}, Landroid/support/v4/view/cp;->b(I)V

    .line 217
    :cond_2
    return-void
.end method

.method public final b_(I)V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    invoke-static {v0}, Lcom/imbryk/viewPager/LoopViewPager;->a(Lcom/imbryk/viewPager/LoopViewPager;)Lcom/imbryk/viewPager/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/imbryk/viewPager/a;->a(I)I

    move-result v0

    .line 166
    iget v1, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->c:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 167
    int-to-float v1, v0

    iput v1, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->c:F

    .line 168
    iget-object v1, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    iget-object v1, v1, Lcom/imbryk/viewPager/LoopViewPager;->b:Landroid/support/v4/view/cp;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/imbryk/viewPager/LoopViewPager$1;->a:Lcom/imbryk/viewPager/LoopViewPager;

    iget-object v1, v1, Lcom/imbryk/viewPager/LoopViewPager;->b:Landroid/support/v4/view/cp;

    invoke-interface {v1, v0}, Landroid/support/v4/view/cp;->b_(I)V

    .line 172
    :cond_0
    return-void
.end method
