.class public Lcom/xueqiu/android/common/widget/EmailAutoTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "EmailAutoTextView.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "@qq.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "@163.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "@126.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "@gmail.com"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "@sina.com"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "@hotmail.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "@sohu.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "@sina.cn"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "@139.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->a(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->a(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/xueqiu/android/common/widget/h;

    sget-object v1, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->a:[Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/xueqiu/android/common/widget/h;-><init>(Lcom/xueqiu/android/common/widget/EmailAutoTextView;Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->setThreshold(I)V

    .line 95
    return-void
.end method


# virtual methods
.method public performFiltering(Ljava/lang/CharSequence;I)V
    .locals 3

    .prologue
    .line 53
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 57
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 58
    const-string v1, "^[a-zA-Z0-9_]+$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[0-9]\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const-string v0, "@"

    invoke-super {p0, v0, p2}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 66
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->dismissDropDown()V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 43
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 44
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method
