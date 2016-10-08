.class public final Lcom/a/a/d/d;
.super Ljava/lang/Object;
.source "DragPinchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public a:Lcom/a/a/d/f;

.field public b:Lcom/a/a/d/g;

.field public c:Lcom/a/a/d/e;

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget v0, Lcom/a/a/d/h;->a:I

    iput v0, p0, Lcom/a/a/d/d;->d:I

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 207
    invoke-static {p1}, Lcom/a/a/d/d;->c(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/a/a/d/d;->i:F

    .line 208
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/a/a/d/d;->e:F

    .line 223
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/a/a/d/d;->f:F

    .line 224
    iget-object v0, p0, Lcom/a/a/d/d;->a:Lcom/a/a/d/f;

    iget v1, p0, Lcom/a/a/d/d;->e:F

    iget v2, p0, Lcom/a/a/d/d;->f:F

    invoke-interface {v0, v1, v2}, Lcom/a/a/d/f;->a(FF)V

    .line 225
    return-void
.end method

.method private static c(Landroid/view/MotionEvent;)F
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 242
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 246
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 245
    invoke-static {v0, v1}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 199
    :cond_0
    :goto_0
    return v1

    .line 124
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/a/a/d/d;->b(Landroid/view/MotionEvent;)V

    .line 125
    sget v0, Lcom/a/a/d/h;->c:I

    iput v0, p0, Lcom/a/a/d/d;->d:I

    .line 126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/a/a/d/d;->j:F

    .line 127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/a/a/d/d;->k:F

    goto :goto_0

    .line 132
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/a/a/d/d;->b(Landroid/view/MotionEvent;)V

    .line 133
    invoke-direct {p0, p2}, Lcom/a/a/d/d;->a(Landroid/view/MotionEvent;)V

    .line 134
    sget v0, Lcom/a/a/d/h;->b:I

    iput v0, p0, Lcom/a/a/d/d;->d:I

    goto :goto_0

    .line 140
    :sswitch_2
    sget v0, Lcom/a/a/d/h;->c:I

    iput v0, p0, Lcom/a/a/d/d;->d:I

    goto :goto_0

    .line 146
    :sswitch_3
    sget v2, Lcom/a/a/d/h;->a:I

    iput v2, p0, Lcom/a/a/d/d;->d:I

    .line 1203
    iget-object v2, p0, Lcom/a/a/d/d;->a:Lcom/a/a/d/f;

    iget v3, p0, Lcom/a/a/d/d;->e:F

    iget v4, p0, Lcom/a/a/d/d;->f:F

    invoke-interface {v2, v3, v4}, Lcom/a/a/d/f;->c(FF)V

    .line 150
    iget v2, p0, Lcom/a/a/d/d;->j:F

    iget v3, p0, Lcom/a/a/d/d;->k:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1260
    if-eqz p2, :cond_1

    .line 1261
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 1262
    sub-float/2addr v2, v4

    sub-float/2addr v3, v5

    invoke-static {v2, v3}, Landroid/graphics/PointF;->length(FF)F

    move-result v2

    .line 1265
    const-wide/16 v4, 0x1f4

    cmp-long v3, v6, v4

    if-gez v3, :cond_1

    const/high16 v3, 0x40a00000    # 5.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    move v0, v1

    .line 150
    :cond_1
    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 152
    iget-wide v4, p0, Lcom/a/a/d/d;->l:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x438c0000    # 280.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/a/a/d/d;->c:Lcom/a/a/d/e;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/a/a/d/d;->c:Lcom/a/a/d/e;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    invoke-interface {v0}, Lcom/a/a/d/e;->a()V

    .line 156
    :cond_2
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/a/a/d/d;->l:J

    goto :goto_0

    .line 158
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/a/a/d/d;->l:J

    goto/16 :goto_0

    .line 166
    :sswitch_4
    iget v0, p0, Lcom/a/a/d/d;->g:F

    iput v0, p0, Lcom/a/a/d/d;->e:F

    .line 167
    iget v0, p0, Lcom/a/a/d/d;->h:F

    iput v0, p0, Lcom/a/a/d/d;->f:F

    .line 168
    sget v0, Lcom/a/a/d/h;->c:I

    iput v0, p0, Lcom/a/a/d/d;->d:I

    goto/16 :goto_0

    .line 173
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/a/a/d/d;->g:F

    .line 174
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/a/a/d/d;->h:F

    .line 176
    invoke-direct {p0, p2}, Lcom/a/a/d/d;->b(Landroid/view/MotionEvent;)V

    .line 177
    invoke-direct {p0, p2}, Lcom/a/a/d/d;->a(Landroid/view/MotionEvent;)V

    .line 178
    sget v0, Lcom/a/a/d/h;->b:I

    iput v0, p0, Lcom/a/a/d/d;->d:I

    goto/16 :goto_0

    .line 184
    :sswitch_6
    sget-object v2, Lcom/a/a/d/d$1;->a:[I

    iget v3, p0, Lcom/a/a/d/d;->d:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 186
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/a/a/d/d;->g:F

    .line 187
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcom/a/a/d/d;->h:F

    .line 2211
    invoke-static {p2}, Lcom/a/a/d/d;->c(Landroid/view/MotionEvent;)F

    move-result v2

    .line 2213
    iget-object v3, p0, Lcom/a/a/d/d;->b:Lcom/a/a/d/g;

    if-eqz v3, :cond_4

    .line 2214
    iget-object v3, p0, Lcom/a/a/d/d;->b:Lcom/a/a/d/g;

    iget v4, p0, Lcom/a/a/d/d;->i:F

    div-float v4, v2, v4

    new-instance v5, Landroid/graphics/PointF;

    .line 2215
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2214
    invoke-interface {v3, v4, v5}, Lcom/a/a/d/g;->a(FLandroid/graphics/PointF;)V

    .line 2218
    :cond_4
    iput v2, p0, Lcom/a/a/d/d;->i:F

    .line 2228
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 2229
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 2231
    iget-object v3, p0, Lcom/a/a/d/d;->a:Lcom/a/a/d/f;

    if-eqz v3, :cond_5

    .line 2232
    iget-object v3, p0, Lcom/a/a/d/d;->a:Lcom/a/a/d/f;

    iget v4, p0, Lcom/a/a/d/d;->e:F

    sub-float v4, v2, v4

    iget v5, p0, Lcom/a/a/d/d;->f:F

    sub-float v5, v0, v5

    invoke-interface {v3, v4, v5}, Lcom/a/a/d/f;->b(FF)V

    .line 2236
    :cond_5
    iput v2, p0, Lcom/a/a/d/d;->e:F

    .line 2237
    iput v0, p0, Lcom/a/a/d/d;->f:F

    goto/16 :goto_0

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0x2 -> :sswitch_6
        0x5 -> :sswitch_5
        0x6 -> :sswitch_4
        0x105 -> :sswitch_1
        0x106 -> :sswitch_2
    .end sparse-switch

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
