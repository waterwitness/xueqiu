.class public final Lcom/xueqiu/android/community/widget/c;
.super Ljava/lang/Object;
.source "SNBTagHandler.java"

# interfaces
.implements Landroid/text/Html$TagHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method private static a(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 60
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 2076
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v2

    invoke-interface {p0, v0, v2, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 2078
    array-length v0, v2

    if-eqz v0, :cond_2

    .line 2081
    array-length v0, v2

    :goto_0
    if-lez v0, :cond_2

    .line 2082
    add-int/lit8 v3, v0, -0x1

    aget-object v3, v2, v3

    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_1

    .line 2083
    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    .line 62
    :goto_1
    invoke-interface {p0, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 64
    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 66
    if-eq v2, v1, :cond_0

    .line 67
    const/16 v0, 0x21

    invoke-interface {p0, p2, v2, v1, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 69
    :cond_0
    return-void

    .line 2081
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2086
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 55
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 56
    const/16 v1, 0x11

    invoke-interface {p0, p1, v0, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 57
    return-void
.end method


# virtual methods
.method public final handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v1, 0x0

    .line 23
    const-string v0, "center"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    if-eqz p1, :cond_1

    .line 25
    new-instance v0, Lcom/xueqiu/android/community/widget/d;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/community/widget/d;-><init>(B)V

    invoke-static {p3, v0}, Lcom/xueqiu/android/community/widget/c;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {v0, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    .line 28
    const-class v1, Lcom/xueqiu/android/community/widget/d;

    invoke-static {p3, v1, v0}, Lcom/xueqiu/android/community/widget/c;->a(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 30
    :cond_2
    const-string v0, "gray"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31
    if-eqz p1, :cond_3

    .line 32
    new-instance v0, Lcom/xueqiu/android/community/widget/e;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/community/widget/e;-><init>(B)V

    invoke-static {p3, v0}, Lcom/xueqiu/android/community/widget/c;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_0

    .line 34
    :cond_3
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#aaaaaa"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 35
    const-class v1, Lcom/xueqiu/android/community/widget/e;

    invoke-static {p3, v1, v0}, Lcom/xueqiu/android/community/widget/c;->a(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_4
    const-string v0, "size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39
    if-eqz p1, :cond_5

    .line 40
    new-instance v0, Lcom/xueqiu/android/community/widget/f;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/community/widget/f;-><init>(B)V

    invoke-static {p3, v0}, Lcom/xueqiu/android/community/widget/c;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_0

    .line 42
    :cond_5
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v1, 0xe

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 43
    const-class v1, Lcom/xueqiu/android/community/widget/f;

    invoke-static {p3, v1, v0}, Lcom/xueqiu/android/community/widget/c;->a(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    :cond_6
    const-string v0, "androidP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1093
    if-lez v0, :cond_9

    .line 1094
    add-int/lit8 v1, v0, -0x1

    const-class v2, Landroid/text/style/ImageSpan;

    invoke-interface {p3, v1, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 1095
    array-length v1, v1

    if-lez v1, :cond_7

    .line 1096
    const-string v0, "\n"

    invoke-interface {p3, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1100
    :cond_7
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_9

    .line 1101
    const/4 v1, 0x2

    if-le v0, v1, :cond_8

    .line 1102
    add-int/lit8 v1, v0, -0x2

    const-class v2, Landroid/text/style/ImageSpan;

    invoke-interface {p3, v1, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 1103
    array-length v1, v1

    if-gtz v1, :cond_0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {p3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_0

    .line 1108
    :cond_8
    const-string v0, "\n"

    invoke-interface {p3, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1113
    :cond_9
    if-eqz v0, :cond_0

    .line 1114
    const-string v0, "\n\n"

    invoke-interface {p3, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0
.end method
