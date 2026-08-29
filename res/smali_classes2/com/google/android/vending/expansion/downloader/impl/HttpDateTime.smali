.class public final Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;
.super Ljava/lang/Object;
.source "HttpDateTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;
    }
.end annotation


# static fields
.field private static final HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_DATE_ANSIC_REGEXP:Ljava/lang/String; = "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

.field private static final HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_DATE_RFC_REGEXP:Ljava/lang/String; = "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    nop

    .line 52
    const-string v0, "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

    .line 53
    nop

    .line 54
    const-string v0, "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDate(Ljava/lang/String;)I
    .locals 3
    .param p0, "dateString"    # Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 109
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    .line 110
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 109
    return v0

    .line 112
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    return v0
.end method

.method private static getMonth(Ljava/lang/String;)I
    .locals 5
    .param p0, "monthString"    # Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 124
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    add-int/2addr v1, v3

    .line 125
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    add-int/2addr v1, v4

    add-int/lit16 v1, v1, -0x123

    .line 126
    .local v1, "hash":I
    sparse-switch v1, :sswitch_data_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 148
    :sswitch_0
    const/16 v0, 0xa

    return v0

    .line 138
    :sswitch_1
    const/4 v0, 0x5

    return v0

    .line 140
    :sswitch_2
    const/4 v0, 0x6

    return v0

    .line 144
    :sswitch_3
    const/16 v0, 0x8

    return v0

    .line 136
    :sswitch_4
    const/4 v0, 0x4

    return v0

    .line 146
    :sswitch_5
    const/16 v0, 0x9

    return v0

    .line 134
    :sswitch_6
    const/4 v0, 0x3

    return v0

    .line 132
    :sswitch_7
    return v3

    .line 142
    :sswitch_8
    const/4 v0, 0x7

    return v0

    .line 128
    :sswitch_9
    return v0

    .line 130
    :sswitch_a
    return v2

    .line 150
    :sswitch_b
    const/16 v0, 0xb

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_b
        0xa -> :sswitch_a
        0x16 -> :sswitch_9
        0x1a -> :sswitch_8
        0x1d -> :sswitch_7
        0x20 -> :sswitch_6
        0x23 -> :sswitch_5
        0x24 -> :sswitch_4
        0x25 -> :sswitch_3
        0x28 -> :sswitch_2
        0x2a -> :sswitch_1
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getTime(Ljava/lang/String;)Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;
    .locals 5
    .param p0, "timeString"    # Ljava/lang/String;

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 185
    .local v0, "hour":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_0

    .line 186
    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int v0, v2, v1

    move v1, v3

    .line 188
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 190
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v3, v2, 0x1

    .line 191
    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    .line 193
    .local v1, "minute":I
    add-int/lit8 v3, v3, 0x1

    .line 195
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v2, 0x1

    .line 196
    .end local v2    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v3, v2

    .line 198
    .local v3, "second":I
    new-instance v2, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;-><init>(III)V

    return-object v2
.end method

.method private static getYear(Ljava/lang/String;)I
    .locals 6
    .param p0, "yearString"    # Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 158
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    .line 159
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 160
    .local v0, "year":I
    const/16 v1, 0x46

    if-lt v0, v1, :cond_0

    .line 161
    add-int/lit16 v1, v0, 0x76c

    return v1

    .line 163
    :cond_0
    add-int/lit16 v1, v0, 0x7d0

    return v1

    .line 165
    .end local v0    # "year":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 167
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    .line 168
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 169
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 170
    .restart local v0    # "year":I
    add-int/lit16 v1, v0, 0x76c

    return v1

    .line 171
    .end local v0    # "year":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    .line 172
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    .line 173
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    .line 174
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 175
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 172
    return v0

    .line 177
    :cond_3
    const/16 v0, 0x7b2

    return v0
.end method

.method public static parse(Ljava/lang/String;)J
    .locals 13
    .param p0, "timeString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x1

    .line 72
    .local v0, "date":I
    const/4 v1, 0x0

    .line 73
    .local v1, "month":I
    const/16 v2, 0x7b2

    .line 76
    .local v2, "year":I
    sget-object v3, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 77
    .local v3, "rfcMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    .line 78
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->getDate(Ljava/lang/String;)I

    move-result v0

    .line 79
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->getMonth(Ljava/lang/String;)I

    move-result v1

    .line 80
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->getYear(Ljava/lang/String;)I

    move-result v2

    .line 81
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->getTime(Ljava/lang/String;)Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;

    move-result-object v4

    .local v4, "timeOfDay":Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;
    goto :goto_0

    .line 83
    .end local v4    # "timeOfDay":Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;
    :cond_0
    sget-object v4, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 84
    .local v4, "ansicMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 85
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->getMonth(Ljava/lang/String;)I

    move-result v1

    .line 86
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->getDate(Ljava/lang/String;)I

    move-result v0

    .line 87
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->getTime(Ljava/lang/String;)Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;

    move-result-object v6

    .line 88
    .local v6, "timeOfDay":Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->getYear(Ljava/lang/String;)I

    move-result v2

    move-object v4, v6

    .line 95
    .end local v6    # "timeOfDay":Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;
    .local v4, "timeOfDay":Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;
    :goto_0
    const/16 v5, 0x7f6

    if-lt v2, v5, :cond_1

    .line 96
    const/16 v2, 0x7f6

    .line 97
    const/4 v1, 0x0

    .line 98
    const/4 v0, 0x1

    .line 101
    :cond_1
    new-instance v5, Landroid/text/format/Time;

    const-string v6, "UTC"

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object v12, v5

    .line 102
    .local v12, "time":Landroid/text/format/Time;
    iget v6, v4, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;->second:I

    iget v7, v4, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;->minute:I

    iget v8, v4, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime$TimeOfDay;->hour:I

    move v9, v0

    move v10, v1

    move v11, v2

    invoke-virtual/range {v5 .. v11}, Landroid/text/format/Time;->set(IIIIII)V

    .line 104
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    return-wide v5

    .line 90
    .end local v12    # "time":Landroid/text/format/Time;
    .local v4, "ansicMatcher":Ljava/util/regex/Matcher;
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method
