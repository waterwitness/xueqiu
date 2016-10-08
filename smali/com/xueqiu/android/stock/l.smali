.class public final Lcom/xueqiu/android/stock/l;
.super Ljava/lang/Object;
.source "QuoteRenderUtil.java"


# direct methods
.method public static a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;
    .locals 4

    .prologue
    const v1, 0x7f070095

    const v0, 0x7f070093

    .line 15
    sparse-switch p0, :sswitch_data_0

    .line 86
    :goto_0
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/xueqiu/android/stock/m;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/m;-><init>()V

    .line 88
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/xueqiu/android/stock/m;->c:Ljava/lang/String;

    .line 89
    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/xueqiu/android/stock/m;->d:Ljava/lang/String;

    .line 90
    const/4 v2, 0x2

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/xueqiu/android/stock/m;->e:Ljava/lang/String;

    .line 91
    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 92
    const/4 v2, 0x3

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/xueqiu/android/stock/m;->f:Ljava/lang/String;

    .line 94
    :cond_0
    iput p0, v1, Lcom/xueqiu/android/stock/m;->g:I

    .line 95
    iput-object p1, v1, Lcom/xueqiu/android/stock/m;->h:Ljava/lang/String;

    .line 96
    return-object v1

    .line 46
    :sswitch_1
    const v0, 0x7f070099

    .line 47
    goto :goto_0

    .line 49
    :sswitch_2
    const v0, 0x7f070096

    .line 50
    goto :goto_0

    .line 52
    :sswitch_3
    const v0, 0x7f070097

    .line 53
    goto :goto_0

    .line 55
    :sswitch_4
    const v0, 0x7f07008e

    .line 56
    goto :goto_0

    .line 58
    :sswitch_5
    const v0, 0x7f07009d

    .line 59
    goto :goto_0

    :sswitch_6
    move v0, v1

    .line 62
    goto :goto_0

    :sswitch_7
    move v0, v1

    .line 65
    goto :goto_0

    .line 67
    :sswitch_8
    const v0, 0x7f07008f

    .line 68
    goto :goto_0

    .line 70
    :sswitch_9
    const v0, 0x7f070092

    .line 71
    goto :goto_0

    .line 73
    :sswitch_a
    const v0, 0x7f070090

    .line 74
    goto :goto_0

    .line 79
    :sswitch_b
    const v0, 0x7f070098

    .line 80
    goto :goto_0

    .line 15
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x8 -> :sswitch_2
        0x9 -> :sswitch_6
        0xa -> :sswitch_1
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_1
        0xe -> :sswitch_1
        0xf -> :sswitch_1
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
        0x12 -> :sswitch_1
        0x13 -> :sswitch_1
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_1
        0x18 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2a -> :sswitch_1
        0x2b -> :sswitch_1
        0x2c -> :sswitch_a
        0x33 -> :sswitch_8
        0x3d -> :sswitch_1
        0x47 -> :sswitch_1
        0x48 -> :sswitch_1
        0x49 -> :sswitch_9
        0x4a -> :sswitch_b
        0x4b -> :sswitch_b
        0x4c -> :sswitch_b
        0x4d -> :sswitch_b
        0x51 -> :sswitch_1
        0x52 -> :sswitch_1
        0x53 -> :sswitch_1
        0x54 -> :sswitch_1
        0xb4 -> :sswitch_3
        0xbe -> :sswitch_7
    .end sparse-switch
.end method
